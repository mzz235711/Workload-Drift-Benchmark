/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<40 AND p.CommentCount>3 AND p.CommentCount<19 AND u.DownVotes>27 AND u.DownVotes<1646 AND v.CreationDate>'2009-11-12 10:37:00'::timestamp AND v.CreationDate<'2010-08-31 12:12:13'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2010-10-16 16:19:54'::timestamp AND b.Date<'2011-10-31 07:21:58'::timestamp;

