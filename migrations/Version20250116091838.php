<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250116091838 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE choice (id INT AUTO_INCREMENT NOT NULL, choice_description VARCHAR(255) NOT NULL, episode_id INT NOT NULL, INDEX IDX_C1AB5A92362B62A0 (episode_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('CREATE TABLE episode (id INT AUTO_INCREMENT NOT NULL, episode_description VARCHAR(255) NOT NULL, story_id INT NOT NULL, INDEX IDX_DDAA1CDAAA5D4036 (story_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('CREATE TABLE leader_board (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('CREATE TABLE player (id INT AUTO_INCREMENT NOT NULL, pseudo VARCHAR(255) NOT NULL, selected_race_id INT NOT NULL, leader_board_id INT DEFAULT NULL, INDEX IDX_98197A65861DAA93 (selected_race_id), INDEX IDX_98197A65DC4D339C (leader_board_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('CREATE TABLE race (id INT AUTO_INCREMENT NOT NULL, strength INT NOT NULL, intelligence INT NOT NULL, wisdom INT NOT NULL, agility INT NOT NULL, hp INT NOT NULL, what_story_id INT NOT NULL, leader_board_id INT DEFAULT NULL, UNIQUE INDEX UNIQ_DA6FBBAFEAC15B4A (what_story_id), INDEX IDX_DA6FBBAFDC4D339C (leader_board_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('CREATE TABLE story (id INT AUTO_INCREMENT NOT NULL, story_description VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('CREATE TABLE `user` (id INT AUTO_INCREMENT NOT NULL, mail VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, role VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8');
        $this->addSql('ALTER TABLE choice ADD CONSTRAINT FK_C1AB5A92362B62A0 FOREIGN KEY (episode_id) REFERENCES episode (id)');
        $this->addSql('ALTER TABLE episode ADD CONSTRAINT FK_DDAA1CDAAA5D4036 FOREIGN KEY (story_id) REFERENCES story (id)');
        $this->addSql('ALTER TABLE player ADD CONSTRAINT FK_98197A65861DAA93 FOREIGN KEY (selected_race_id) REFERENCES race (id)');
        $this->addSql('ALTER TABLE player ADD CONSTRAINT FK_98197A65DC4D339C FOREIGN KEY (leader_board_id) REFERENCES leader_board (id)');
        $this->addSql('ALTER TABLE race ADD CONSTRAINT FK_DA6FBBAFEAC15B4A FOREIGN KEY (what_story_id) REFERENCES story (id)');
        $this->addSql('ALTER TABLE race ADD CONSTRAINT FK_DA6FBBAFDC4D339C FOREIGN KEY (leader_board_id) REFERENCES leader_board (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE choice DROP FOREIGN KEY FK_C1AB5A92362B62A0');
        $this->addSql('ALTER TABLE episode DROP FOREIGN KEY FK_DDAA1CDAAA5D4036');
        $this->addSql('ALTER TABLE player DROP FOREIGN KEY FK_98197A65861DAA93');
        $this->addSql('ALTER TABLE player DROP FOREIGN KEY FK_98197A65DC4D339C');
        $this->addSql('ALTER TABLE race DROP FOREIGN KEY FK_DA6FBBAFEAC15B4A');
        $this->addSql('ALTER TABLE race DROP FOREIGN KEY FK_DA6FBBAFDC4D339C');
        $this->addSql('DROP TABLE choice');
        $this->addSql('DROP TABLE episode');
        $this->addSql('DROP TABLE leader_board');
        $this->addSql('DROP TABLE player');
        $this->addSql('DROP TABLE race');
        $this->addSql('DROP TABLE story');
        $this->addSql('DROP TABLE `user`');
    }
}
