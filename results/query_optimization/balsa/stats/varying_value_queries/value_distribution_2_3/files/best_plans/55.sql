/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<64 AND p.CommentCount>2 AND p.CommentCount<24 AND u.DownVotes>297 AND u.DownVotes<644 AND v.CreationDate>'2009-10-02 22:55:33'::timestamp AND v.CreationDate<'2014-08-24 05:23:14'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2010-08-27 20:46:44'::timestamp AND b.Date<'2011-04-26 22:14:13'::timestamp;

