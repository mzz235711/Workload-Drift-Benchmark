/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<139 AND p.CommentCount>4 AND p.CommentCount<34 AND u.DownVotes>91 AND u.DownVotes<1656 AND v.CreationDate>'2009-11-08 04:42:43'::timestamp AND v.CreationDate<'2013-09-20 05:53:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-08-28 15:20:54'::timestamp AND b.Date<'2012-09-06 03:07:04'::timestamp;

