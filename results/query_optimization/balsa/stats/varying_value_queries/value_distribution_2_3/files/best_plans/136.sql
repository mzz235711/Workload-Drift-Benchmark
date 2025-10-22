/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<162 AND p.CommentCount>4 AND p.CommentCount<37 AND u.DownVotes>21 AND u.DownVotes<566 AND v.CreationDate>'2012-05-02 19:10:33'::timestamp AND v.CreationDate<'2013-11-12 12:55:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2012-04-05 05:19:53'::timestamp AND b.Date<'2013-08-11 07:57:30'::timestamp;

