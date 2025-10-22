/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<10 AND p.CommentCount>8 AND p.CommentCount<29 AND u.DownVotes>33 AND u.DownVotes<1751 AND v.CreationDate>'2009-04-23 17:29:21'::timestamp AND v.CreationDate<'2011-04-26 17:34:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-06-26 03:11:59'::timestamp AND b.Date<'2013-07-02 06:59:14'::timestamp;

