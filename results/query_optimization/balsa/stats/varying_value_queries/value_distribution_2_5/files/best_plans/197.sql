/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<190 AND p.CommentCount>16 AND p.CommentCount<25 AND u.DownVotes>99 AND u.DownVotes<721 AND v.CreationDate>'2009-06-17 16:57:48'::timestamp AND v.CreationDate<'2011-07-09 00:09:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-12-08 03:00:56'::timestamp AND b.Date<'2012-03-14 18:35:15'::timestamp;

