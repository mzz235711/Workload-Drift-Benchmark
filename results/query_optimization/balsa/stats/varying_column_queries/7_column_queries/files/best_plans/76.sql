/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-04 10:09:10'::timestamp AND u.Views>=0 AND u.Views<=26 AND u.DownVotes>=0 AND u.DownVotes<=5 AND u.UpVotes<=869 AND u.CreationDate<='2014-08-11 16:16:39'::timestamp;

