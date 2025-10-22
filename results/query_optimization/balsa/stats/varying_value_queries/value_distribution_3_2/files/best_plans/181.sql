/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<127 AND p.CommentCount>6 AND p.CommentCount<28 AND u.DownVotes>434 AND u.DownVotes<1832 AND v.CreationDate>'2009-11-06 16:11:53'::timestamp AND v.CreationDate<'2014-09-08 08:46:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2011-06-10 17:04:03'::timestamp AND b.Date<'2011-12-11 19:41:12'::timestamp;

