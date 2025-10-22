/*+ HashJoin(u b v p)
 HashJoin(v p)
 HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(p)
 Leading(((u b) (v p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<160 AND p.CommentCount>6 AND p.CommentCount<16 AND u.DownVotes>93 AND u.DownVotes<1044 AND v.CreationDate>'2009-06-14 01:54:50'::timestamp AND v.CreationDate<'2011-10-10 20:12:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-09-14 20:23:49'::timestamp AND b.Date<'2013-07-27 03:43:26'::timestamp;

