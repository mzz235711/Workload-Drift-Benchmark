/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<79 AND p.CommentCount>16 AND p.CommentCount<25 AND u.DownVotes>767 AND u.DownVotes<1257 AND v.CreationDate>'2010-05-04 00:01:53'::timestamp AND v.CreationDate<'2012-04-01 14:29:18'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2011-11-17 18:39:38'::timestamp AND b.Date<'2014-06-21 08:53:41'::timestamp;

