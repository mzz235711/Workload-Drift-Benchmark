/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<168 AND p.CommentCount>10 AND p.CommentCount<30 AND u.DownVotes>248 AND u.DownVotes<1501 AND v.CreationDate>'2009-09-11 04:06:44'::timestamp AND v.CreationDate<'2013-10-05 03:15:07'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-06-29 10:36:20'::timestamp AND b.Date<'2013-06-21 15:59:34'::timestamp;

