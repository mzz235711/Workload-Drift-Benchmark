/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<83 AND p.CommentCount>3 AND p.CommentCount<22 AND u.DownVotes>442 AND u.DownVotes<1590 AND v.CreationDate>'2012-04-04 23:11:07'::timestamp AND v.CreationDate<'2014-01-16 09:14:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-11-09 07:47:12'::timestamp AND b.Date<'2011-09-04 21:01:41'::timestamp;

