/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>49 AND p.Score<130 AND p.CommentCount>0 AND p.CommentCount<13 AND u.DownVotes>121 AND u.DownVotes<795 AND v.CreationDate>'2010-04-06 03:30:48'::timestamp AND v.CreationDate<'2011-10-01 18:11:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-10-29 14:09:10'::timestamp AND b.Date<'2014-07-15 18:24:50'::timestamp;

