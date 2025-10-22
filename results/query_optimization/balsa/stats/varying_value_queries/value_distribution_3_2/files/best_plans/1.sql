/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<176 AND p.CommentCount>17 AND p.CommentCount<43 AND u.DownVotes>134 AND u.DownVotes<724 AND v.CreationDate>'2011-02-19 15:02:24'::timestamp AND v.CreationDate<'2013-06-04 05:17:01'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-05-01 07:26:17'::timestamp AND b.Date<'2012-01-08 17:55:53'::timestamp;

