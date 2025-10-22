/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>89 AND p.Score<183 AND p.CommentCount>10 AND p.CommentCount<22 AND u.DownVotes>341 AND u.DownVotes<1734 AND v.CreationDate>'2011-06-07 18:16:33'::timestamp AND v.CreationDate<'2012-07-08 21:54:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-12-02 23:42:17'::timestamp AND b.Date<'2013-07-04 08:47:59'::timestamp;

