/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<63 AND p.CommentCount>7 AND p.CommentCount<11 AND u.DownVotes>26 AND u.DownVotes<1577 AND v.CreationDate>'2009-09-18 12:18:56'::timestamp AND v.CreationDate<'2014-03-19 13:58:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-02-08 23:59:27'::timestamp AND b.Date<'2011-05-10 10:16:28'::timestamp;

