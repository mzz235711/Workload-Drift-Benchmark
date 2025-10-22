/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<135 AND p.CommentCount>1 AND p.CommentCount<41 AND u.DownVotes>64 AND u.DownVotes<1725 AND v.CreationDate>'2009-03-24 10:29:17'::timestamp AND v.CreationDate<'2014-08-31 16:13:44'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-04-29 00:15:05'::timestamp AND b.Date<'2013-02-07 18:15:09'::timestamp;

