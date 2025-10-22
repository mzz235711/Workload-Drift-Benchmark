/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<123 AND p.CommentCount>11 AND p.CommentCount<23 AND u.DownVotes>19 AND u.DownVotes<209 AND v.CreationDate>'2012-12-06 16:57:13'::timestamp AND v.CreationDate<'2012-12-29 17:27:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-10-08 00:35:19'::timestamp AND b.Date<'2014-06-02 00:34:49'::timestamp;

