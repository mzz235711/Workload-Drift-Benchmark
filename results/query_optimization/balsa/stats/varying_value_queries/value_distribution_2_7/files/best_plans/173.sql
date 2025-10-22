/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<64 AND p.CommentCount>20 AND p.CommentCount<26 AND u.DownVotes>26 AND u.DownVotes<440 AND v.CreationDate>'2012-04-19 13:08:03'::timestamp AND v.CreationDate<'2013-12-10 18:53:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-04-17 04:10:58'::timestamp AND b.Date<'2014-02-27 18:48:32'::timestamp;

