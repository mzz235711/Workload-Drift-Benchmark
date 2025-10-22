/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<189 AND p.CommentCount>21 AND p.CommentCount<43 AND u.DownVotes>190 AND u.DownVotes<996 AND v.CreationDate>'2011-09-08 21:29:40'::timestamp AND v.CreationDate<'2012-09-28 07:42:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-10-12 22:30:56'::timestamp AND b.Date<'2013-01-13 18:19:07'::timestamp;

