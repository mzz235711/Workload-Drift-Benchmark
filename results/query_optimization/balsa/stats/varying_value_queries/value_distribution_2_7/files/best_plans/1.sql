/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<153 AND p.CommentCount>8 AND p.CommentCount<44 AND u.DownVotes>201 AND u.DownVotes<1449 AND v.CreationDate>'2010-03-08 01:46:58'::timestamp AND v.CreationDate<'2014-01-08 11:57:04'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-08-20 00:45:03'::timestamp AND b.Date<'2013-06-06 08:57:16'::timestamp;

