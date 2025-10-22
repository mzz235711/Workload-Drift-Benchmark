/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<143 AND p.CommentCount>7 AND p.CommentCount<30 AND u.DownVotes>83 AND u.DownVotes<1273 AND v.CreationDate>'2009-05-25 05:36:34'::timestamp AND v.CreationDate<'2011-10-15 09:06:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-01-28 03:18:26'::timestamp AND b.Date<'2013-03-20 16:47:56'::timestamp;

