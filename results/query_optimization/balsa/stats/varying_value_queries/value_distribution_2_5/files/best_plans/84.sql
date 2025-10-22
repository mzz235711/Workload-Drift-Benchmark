/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<150 AND p.CommentCount>2 AND p.CommentCount<4 AND u.DownVotes>21 AND u.DownVotes<514 AND v.CreationDate>'2010-04-28 12:00:43'::timestamp AND v.CreationDate<'2013-02-18 11:26:17'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2013-03-19 14:30:21'::timestamp AND b.Date<'2013-05-02 11:58:43'::timestamp;

