/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<139 AND p.CommentCount>0 AND p.CommentCount<25 AND u.DownVotes>483 AND u.DownVotes<911 AND v.CreationDate>'2009-02-06 16:54:38'::timestamp AND v.CreationDate<'2013-07-18 16:09:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-06-03 15:17:43'::timestamp AND b.Date<'2014-02-13 21:35:20'::timestamp;

