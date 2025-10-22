/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<167 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>484 AND u.DownVotes<1125 AND v.CreationDate>'2012-06-30 10:21:46'::timestamp AND v.CreationDate<'2014-08-10 10:53:14'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2011-01-11 01:04:54'::timestamp AND b.Date<'2011-06-01 10:05:05'::timestamp;

