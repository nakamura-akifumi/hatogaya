# coding: utf-8
namespace :hatogaya do
  namespace :db do
    desc 'print database description (text)'
    task :desc => :environment do
			desc = Hatogaya::Db::Desc.new
			begin
				desc.parse_arg
			rescue => e
        STDERR.puts e.message
			end

			desc.text_output
		end
	
    desc 'print database description (ER graph)'
    task :desc_graph => :environment do
			desc = Hatogaya::Db::Desc.new
			begin
				desc.parse_arg
			rescue => e
        STDERR.puts e.message
			end

			desc.graph_output
		end
	
    desc 'print database description (Excel format)'
    task :desc_excel => :environment do
			puts "print attributes"

			desc = Hatogaya::Db::Desc.new
			begin
				desc.parse_arg
			rescue => e
        STDERR.puts e.message
			end

			desc.excel_output
    end
  end
end
