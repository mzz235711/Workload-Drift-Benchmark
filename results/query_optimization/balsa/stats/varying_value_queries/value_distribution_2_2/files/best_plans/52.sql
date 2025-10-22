/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<180 AND p.CommentCount>2 AND p.CommentCount<25 AND u.DownVotes>760 AND u.DownVotes<1853 AND v.CreationDate>'2012-07-17 09:22:52'::timestamp AND v.CreationDate<'2013-11-17 05:53:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2010-10-01 07:07:37'::timestamp AND b.Date<'2011-06-22 17:26:08'::timestamp;

