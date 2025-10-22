/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<66 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>761 AND u.DownVotes<1638 AND v.CreationDate>'2011-07-20 07:49:34'::timestamp AND v.CreationDate<'2014-06-09 00:59:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2012-03-14 06:54:26'::timestamp AND b.Date<'2014-01-07 20:30:03'::timestamp;

