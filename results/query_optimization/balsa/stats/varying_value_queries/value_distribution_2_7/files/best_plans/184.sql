/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<27 AND p.CommentCount>9 AND p.CommentCount<37 AND u.DownVotes>390 AND u.DownVotes<1263 AND v.CreationDate>'2011-11-07 13:36:24'::timestamp AND v.CreationDate<'2013-10-30 20:42:28'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-10-01 18:09:25'::timestamp AND b.Date<'2012-10-10 12:55:17'::timestamp;

