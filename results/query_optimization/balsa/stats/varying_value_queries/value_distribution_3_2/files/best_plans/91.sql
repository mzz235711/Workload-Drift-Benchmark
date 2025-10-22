/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<31 AND p.CommentCount>17 AND p.CommentCount<29 AND u.DownVotes>45 AND u.DownVotes<510 AND v.CreationDate>'2010-07-31 18:19:08'::timestamp AND v.CreationDate<'2012-05-27 20:09:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-06-14 20:09:38'::timestamp AND b.Date<'2014-09-11 13:29:16'::timestamp;

