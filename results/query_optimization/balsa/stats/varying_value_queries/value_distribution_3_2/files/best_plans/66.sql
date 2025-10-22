/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<31 AND p.CommentCount>4 AND p.CommentCount<39 AND u.DownVotes>251 AND u.DownVotes<1301 AND v.CreationDate>'2012-06-18 12:17:07'::timestamp AND v.CreationDate<'2014-04-16 04:52:37'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2011-08-24 14:42:47'::timestamp AND b.Date<'2014-06-17 00:16:38'::timestamp;

