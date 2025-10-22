/*+ MergeJoin(ph c b u p)
 HashJoin(c b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (c (b (u p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CreationDate>='2010-07-20 07:56:06'::timestamp AND p.CreationDate<='2014-08-18 19:54:42'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate<='2014-09-02 11:30:04'::timestamp;

