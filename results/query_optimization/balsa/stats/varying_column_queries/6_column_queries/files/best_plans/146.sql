/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 02:42:11'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.DownVotes=0 AND u.UpVotes<=10 AND u.CreationDate>='2010-12-20 22:24:03'::timestamp AND u.CreationDate<='2014-09-10 18:15:53'::timestamp;

