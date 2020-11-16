package models

// its use for definition database GORM
type SettingUser struct {
  ID                int              `gorm:"AUTO_INCREMENT;PRIMARY_KEY"` 
  Full_name         string           `gorm:"type:varchar(50)"`
  Username          string           `gorm:"type:varchar(50)"`
  Email           	string           `gorm:"type:varchar(50)"`
  Telephone         string           `gorm:"type:varchar(50)"`
  Address         	string           `gorm:"type:varchar(255)"`
  Gender       	    string           `gorm:"type:enum('L','P')"`
  Image             string           `gorm:"type:varchar(255)"`
  Password         	string           `gorm:"type:varchar(100)"`
  Auth_token        string           `gorm:"type:varchar(255)"`
  Status            string           `gorm:"type:enum('Y','N'); comment:'Y:Active, N:Inactive'; default:'Y'"`
  CreatedAt         string           `gorm:"type:timestamp(0); default:CURRENT_TIMESTAMP"`
  UpdatedAt         string           `gorm:"type:timestamp(0); default:CURRENT_TIMESTAMP""`
  Additional        string           `gorm:"type:varchar(191)"`
}
func (SettingUser) TableName() string {
  return "tb_setting_user"
}


