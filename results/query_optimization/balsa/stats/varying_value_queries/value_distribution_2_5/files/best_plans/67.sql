/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<179 AND p.CommentCount>8 AND p.CommentCount<14 AND u.DownVotes>509 AND u.DownVotes<948 AND v.CreationDate>'2012-04-30 16:19:42'::timestamp AND v.CreationDate<'2013-03-18 23:17:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-05-24 13:36:58'::timestamp AND b.Date<'2012-03-09 19:08:52'::timestamp;

