/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>81 AND p.Score<151 AND p.CommentCount>6 AND p.CommentCount<27 AND u.DownVotes>99 AND u.DownVotes<1610 AND v.CreationDate>'2012-07-20 01:12:05'::timestamp AND v.CreationDate<'2014-02-17 06:35:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-10-28 21:22:53'::timestamp AND b.Date<'2013-05-28 21:06:02'::timestamp;

