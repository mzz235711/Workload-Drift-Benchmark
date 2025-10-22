/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<108 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>220 AND u.DownVotes<1543 AND v.CreationDate>'2010-11-08 00:08:08'::timestamp AND v.CreationDate<'2012-03-06 16:26:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-07-03 15:22:05'::timestamp AND b.Date<'2012-10-04 03:08:48'::timestamp;

