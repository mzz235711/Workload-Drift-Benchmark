/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<67 AND p.CommentCount>19 AND p.CommentCount<32 AND u.DownVotes>33 AND u.DownVotes<1495 AND v.CreationDate>'2009-07-19 00:45:03'::timestamp AND v.CreationDate<'2012-04-05 12:46:14'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2010-12-08 23:35:20'::timestamp AND b.Date<'2014-06-06 04:08:18'::timestamp;

