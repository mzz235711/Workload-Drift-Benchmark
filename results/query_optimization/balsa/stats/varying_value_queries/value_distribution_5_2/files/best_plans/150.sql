/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<116 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>105 AND u.DownVotes<746 AND v.CreationDate>'2012-12-10 13:28:21'::timestamp AND v.CreationDate<'2013-10-20 00:33:05'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2013-01-14 02:43:18'::timestamp AND b.Date<'2014-03-02 15:28:49'::timestamp;

