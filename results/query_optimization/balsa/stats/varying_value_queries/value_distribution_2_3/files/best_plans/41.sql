/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<89 AND p.CommentCount>8 AND p.CommentCount<38 AND u.DownVotes>191 AND u.DownVotes<1365 AND v.CreationDate>'2010-04-13 14:34:34'::timestamp AND v.CreationDate<'2013-09-14 02:04:44'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2013-04-25 20:10:52'::timestamp AND b.Date<'2014-05-30 17:45:07'::timestamp;

