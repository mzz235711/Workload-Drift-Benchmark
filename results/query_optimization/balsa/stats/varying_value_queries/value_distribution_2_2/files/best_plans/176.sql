/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<51 AND p.CommentCount>11 AND p.CommentCount<30 AND u.DownVotes>453 AND u.DownVotes<1102 AND v.CreationDate>'2009-09-10 06:34:07'::timestamp AND v.CreationDate<'2012-09-17 07:26:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-09-28 04:30:43'::timestamp AND b.Date<'2014-01-08 00:41:11'::timestamp;

