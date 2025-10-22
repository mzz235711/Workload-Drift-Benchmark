/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<167 AND p.CommentCount>6 AND p.CommentCount<33 AND u.DownVotes>591 AND u.DownVotes<1020 AND v.CreationDate>'2011-11-17 22:04:37'::timestamp AND v.CreationDate<'2013-07-17 07:19:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-04-12 23:40:06'::timestamp AND b.Date<'2013-08-15 12:38:13'::timestamp;

