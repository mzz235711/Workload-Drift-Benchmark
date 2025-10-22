/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<144 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>763 AND u.DownVotes<1428 AND v.CreationDate>'2010-07-07 06:06:42'::timestamp AND v.CreationDate<'2011-10-09 13:50:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-11-25 15:12:03'::timestamp AND b.Date<'2012-09-11 10:01:22'::timestamp;

