/*+ MergeJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date<='2014-09-11 23:59:40'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2011-03-18 20:00:42'::timestamp AND u.CreationDate<='2014-08-25 14:35:06'::timestamp;

