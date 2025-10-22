/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>70 AND p.Score<92 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>17 AND u.DownVotes<263 AND v.CreationDate>'2011-10-28 01:47:27'::timestamp AND v.CreationDate<'2014-02-08 04:54:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2013-04-08 07:41:06'::timestamp AND b.Date<'2014-08-17 11:35:59'::timestamp;

