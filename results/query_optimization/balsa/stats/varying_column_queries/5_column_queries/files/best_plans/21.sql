/*+ MergeJoin(b v c u)
 HashJoin(v c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((b (v (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-08-10 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND b.Date<='2014-08-27 09:09:27'::timestamp AND u.Views<=18 AND u.DownVotes>=0;

