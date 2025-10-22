/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<178 AND p.CommentCount>1 AND p.CommentCount<21 AND u.DownVotes>4 AND u.DownVotes<1645 AND v.CreationDate>'2010-10-10 16:29:18'::timestamp AND v.CreationDate<'2013-10-30 22:44:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-11-18 18:52:47'::timestamp AND b.Date<'2013-08-14 08:44:24'::timestamp;

