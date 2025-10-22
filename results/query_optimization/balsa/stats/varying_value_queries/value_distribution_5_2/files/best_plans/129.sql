/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<144 AND p.CommentCount>21 AND p.CommentCount<36 AND u.DownVotes>173 AND u.DownVotes<1717 AND v.CreationDate>'2011-12-05 09:29:45'::timestamp AND v.CreationDate<'2012-12-16 22:45:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-02-25 08:45:40'::timestamp AND b.Date<'2014-04-02 09:26:51'::timestamp;

