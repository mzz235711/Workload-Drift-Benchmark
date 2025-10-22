/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<180 AND p.CommentCount>3 AND p.CommentCount<44 AND u.DownVotes>65 AND u.DownVotes<1156 AND v.CreationDate>'2011-03-21 15:44:04'::timestamp AND v.CreationDate<'2011-09-10 08:07:39'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-04-23 23:48:08'::timestamp AND b.Date<'2012-11-09 17:37:29'::timestamp;

