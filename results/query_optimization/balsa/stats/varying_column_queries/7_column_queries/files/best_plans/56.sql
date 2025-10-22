/*+ HashJoin(c u ph p b)
 MergeJoin(c u ph p)
 MergeJoin(c u ph)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(b)
 Leading(((((c u) ph) p) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-17 16:41:53'::timestamp AND c.CreationDate<='2014-09-11 01:11:51'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=13 AND ph.PostHistoryTypeId=3 AND u.DownVotes>=0 AND u.UpVotes<=3;

