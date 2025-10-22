/*+ HashJoin(c u p b ph)
 HashJoin(c u p b)
 HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 IndexScan(ph)
 Leading(((((c u) p) b) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-09 19:18:05'::timestamp AND p.Score>=0 AND p.Score<=33 AND p.ViewCount<=3369 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-15 04:54:49'::timestamp AND p.CreationDate<='2014-09-04 23:01:02'::timestamp AND ph.CreationDate<='2014-06-11 08:03:34'::timestamp AND u.DownVotes<=8 AND u.UpVotes>=0;

