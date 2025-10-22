/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<175 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>120 AND u.DownVotes<1042 AND v.CreationDate>'2012-04-27 04:29:56'::timestamp AND v.CreationDate<'2013-02-02 20:56:51'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2011-02-24 06:23:07'::timestamp AND b.Date<'2011-08-16 06:23:49'::timestamp;

