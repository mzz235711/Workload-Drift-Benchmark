/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<86 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>51 AND u.DownVotes<1693 AND v.CreationDate>'2010-09-26 12:37:16'::timestamp AND v.CreationDate<'2012-05-06 04:05:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2010-08-27 00:35:58'::timestamp AND b.Date<'2013-06-20 15:52:32'::timestamp;

