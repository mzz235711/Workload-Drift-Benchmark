/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>96 AND p.Score<162 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>75 AND u.DownVotes<1806 AND v.CreationDate>'2011-04-17 23:34:29'::timestamp AND v.CreationDate<'2012-10-07 21:39:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-03-16 07:39:54'::timestamp AND b.Date<'2014-05-14 00:45:02'::timestamp;

