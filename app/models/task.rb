class Task < ApplicationRecord
    validates :title, presence: true
    validates :start_date, presence: true
    validates :start_end, presence: true
    validates :description, presence: true

    validate :date_before_start
    def date_before_start
        return if start_date.blank?
        errors.add(:start_date, "は本日以降の日時を登録してください") if self.start_date < Time.now
    end

    validate :start_date_check
    def start_date_check
        return if start_end.blank? || start_date.blank?
        errors.add(:start_end, "は開始日時以降の時間を登録してください") if self.start_date >= self.start_end
    end
end