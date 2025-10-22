/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<172 AND p.CommentCount>15 AND p.CommentCount<20 AND u.DownVotes>209 AND u.DownVotes<362 AND v.CreationDate>'2012-03-09 08:46:28'::timestamp AND v.CreationDate<'2014-05-27 20:01:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-12-20 12:40:41'::timestamp AND b.Date<'2012-12-31 15:44:45'::timestamp;

