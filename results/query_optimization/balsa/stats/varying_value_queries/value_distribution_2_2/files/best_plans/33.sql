/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<131 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>774 AND u.DownVotes<798 AND v.CreationDate>'2009-12-30 16:03:06'::timestamp AND v.CreationDate<'2011-12-15 09:12:00'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-09-09 18:01:07'::timestamp AND b.Date<'2012-10-08 04:06:36'::timestamp;

