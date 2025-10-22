/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<153 AND p.CommentCount>2 AND p.CommentCount<16 AND u.DownVotes>53 AND u.DownVotes<604 AND v.CreationDate>'2009-04-10 11:43:22'::timestamp AND v.CreationDate<'2012-12-23 03:18:59'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-10-25 17:53:46'::timestamp AND b.Date<'2014-02-02 16:14:53'::timestamp;

