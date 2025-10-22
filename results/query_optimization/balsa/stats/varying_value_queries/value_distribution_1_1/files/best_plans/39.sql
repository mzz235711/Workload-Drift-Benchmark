/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<89 AND p.CommentCount>13 AND p.CommentCount<39 AND u.DownVotes>74 AND u.DownVotes<1513 AND v.CreationDate>'2009-10-12 23:13:48'::timestamp AND v.CreationDate<'2013-11-30 09:10:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2013-07-12 07:21:21'::timestamp AND b.Date<'2013-09-27 04:40:33'::timestamp;

